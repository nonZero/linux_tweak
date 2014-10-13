#Re-mapping local folders to Google Drive

#Mapping Videos folder
rm -r Videos/ && ln -s Google\ Drive/Data/Videos/ Videos

#Mapping Music folder
rm -r Music/ && ln -s Google\ Drive/Data/Music/ Music

#Mapping Desktop folder
rm -r Desktop/ && ln -s Google\ Drive/Data/Desktop/ Desktop

#Mapping Documents folder
rm -r Documents/ && ln -s Google\ Drive/Data/Documents/ Documents
