local littlehelper = {}

function littlehelper.requireSystems()
  local systemTable = {}
  local systemName

  for k, v in ipairs(love.filesystem.getDirectoryItems("Systems")) do
    systemName = "Systems." .. v:gsub("%.lua", "")
    table.insert(systemTable, require(systemName))
  end
return systemTable --intendation of this return good ?
end

return littlehelper
