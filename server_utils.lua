function tryPayment(source,price,account)
	local xPlayer = Framework.Functions.GetPlayer(source)
	local money = xPlayer.PlayerData.money[account]
	if money >= price then
		xPlayer.Functions.RemoveMoney(account, price)
		return true
	else
		return false
	end
end

function giveMoney(source,price,account)
	local xPlayer = Framework.Functions.GetPlayer(source)
	xPlayer.Functions.AddMoney(account, price)
end

function getPlayerName(user_id)
	if user_id then
		local sql = "SELECT name FROM `characters_metadata` WHERE citizenid = @user_id";
		local query = MySQL.Sync.fetchAll(sql,{['@user_id'] = user_id});
		if query and query[1] and query[1].name then
			return query[1].name
		end
	end
	return false
end

function hasVehicle(user_id,plate)
	local sql = "SELECT 1 FROM `characters_vehicles` WHERE citizenid = @user_id AND plate = @plate";
	local query = MySQL.Sync.fetchAll(sql, {['@user_id'] = user_id, ['@plate'] = plate});
	if query and query[1] then
		return true
	else
		return false
	end
end

function deleteSoldVehicle(user_id,plate)
	local sql = "DELETE FROM `characters_vehicles` WHERE citizenid = @user_id AND plate = @plate";
	MySQL.Sync.execute(sql, {['@user_id'] = user_id, ['@plate'] = plate});
end

function insertVehicleOnGarage(source,vehicleProps,vehicle_model)
	local xPlayer = Framework.Functions.GetPlayer(source)
	local GarageData = "Legion Parking"
    local VehicleMeta = {Fuel = 100.0, Body = 1000.0, Engine = 1000.0}
	MySQL.Async.execute('INSERT INTO characters_vehicles (citizenid, plate, vehicle, mods, state, metadata, garage) VALUES (@citizenid, @plate, @vehicle, @mods, @state, @metadata, @garage)',
	{
		['@citizenid']   = xPlayer.PlayerData.citizenid,
		['@plate']   = vehicleProps.plate,
		['@vehicle']   = vehicle_model,
		['@state']   = 'out',
		['@metadata']   = '{"Engine":1000.0,"Body":1000.0,"Fuel":100.0}',
		['@garage']   = 'Legion Parking',
		['@mods'] = json.encode(vehicleProps)
	})
end

function dontAskMeWhatIsThis(user_id)
	local sql = [[
		SELECT O.citizenid, O.mods, O.plate, R.price, R.id, R.status
		FROM `characters_vehicles` O
		LEFT JOIN `dealership_requests` R ON R.plate = O.plate
		WHERE O.citizenid = @user_id OR R.user_id = @user_id AND R.request_type = 0
			UNION
		SELECT O.citizenid, R.vehicle, R.plate, R.price, R.id, R.status
		FROM `characters_vehicles` O
		RIGHT JOIN `dealership_requests` R ON R.plate = O.plate
		WHERE O.citizenid = @user_id OR R.user_id = @user_id AND R.request_type = 0
	]];
	return MySQL.Sync.fetchAll(sql,{['@user_id'] = user_id});
end

function GeneratePlate()
    local plateFormat = Config.PlateFormat or 'nnn lll'
    local generatedPlate = ''
    math.randomseed(os.time())
	for i = 1, math.min(#plateFormat, 8) do
		local currentChar = string.sub(plateFormat, i, i)
		if currentChar == 'n' then
			local a = math.random(0, 9)
			generatedPlate = generatedPlate .. a
		elseif currentChar == 'l' then
			local a = string.char(math.random(65, 90))
			generatedPlate = generatedPlate .. a
		elseif currentChar == 'x' then
			local isLetter = math.random(0, 1)
			if isLetter == 1 then
				local a = string.char(math.random(65, 90))
				generatedPlate = generatedPlate .. a
			else
				local a = math.random(0, 9)
				generatedPlate = generatedPlate .. a
			end
		else
			generatedPlate = generatedPlate ..  string.upper(currentChar)
		end
	end
    local isDuplicate = MySQL.Sync.fetchScalar('SELECT COUNT(1) FROM characters_vehicles WHERE plate = @plate', {
		['@plate'] = generatedPlate
    })
    if isDuplicate == 1 then
		generatedPlate = GeneratePlate()
    end
    return generatedPlate
end