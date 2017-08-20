# Grab the query that the user typed (this is provided by Alfred).
theQuery = "{query}"

# Assemble an array of each matching server.
# The -i flag ignores case.
servers = `ls -1 /usr/local/etc/shadowsocks.d | grep -i [^/]*#{Regexp.quote(theQuery)}[^/]*$`.split(".json\n")
# Start the XML string that will be sent to Alfred. This just uses strings to avoid dependencies.
xmlString = "<?xml version=\"1.0\"?>\n<items>\n"
servers.each do | server |
	ping = `ping -c1 #{Regexp.quote(server)} | grep time | awk '{print $7 $8}'`
	iconValue = "/usr/local/etc/ss-icons.d/#{server}.png"
	# The icon type sent to Alfred is 'fileicon' (taken from a file). This assumes that a .app was found.
	# Assemble this item's XML string for Alfred. See http://www.alfredforum.com/topic/5-generating-feedback-in-workflows/
	thisXmlString = "\t<item uid=\"#{server}\" arg=\"#{server}\">
		<title>#{server}</title>
		<subtitle>PING #{ping}</subtitle>
		<icon>#{iconValue}</icon>
	</item>\n"
	# Append to the global XML string.
	xmlString += thisXmlString
end
# Finish off and echo the XML string to Alfred.
xmlString += "</items>"
puts xmlString