Upload file to Dropbox from the command line.

Use of this gem requires that you have a dropbox app to support oauth authentication to your Dropbox account. See https://www.dropbox.com/developers/apps to create an app.

*Why?*

I want to distribute artifacts produced by builds on a continuous integration server via dropbox. That allows new artifacts to be automatically pushed to a number of dropbox users rather than requiring users to check for resources on a central server. It also allows me to use access to a common shared folder in dropbox to control distribution rather than managing another set of user credentials.

This could be accomplished by installing the dropbox client on the CI server and manipulating files on disk. However that would require that a number of distributed CI build agents all have the client installed and the same dropbox account authenticated. Instead I want a gem which will allow me to provide an authorized API key as part of my CI build configuration. This allows me to upload file on behalf of a different dropbox user account per project build by the CI server and depends only on the ability to manage the gems installed on each build agent, functionality the CI environment already provides, rather than installing a dropbox client package.

*Usage*

`DROPBOX_APP_KEY=<key> DROPBOX_APP_SECRET=<secret> boxdrop authenticate`
`DROPBOX_APP_KEY=<key> DROPBOX_APP_SECRET=<secret> DROPBOX_SESSION_KEY=<session_key> DROPBOX_SESSION_SECRET=<session_secret> boxdrop <path_to_file> <path_relative_to_dropbox_folder>`