# SinatraNFSN

Example [Sinatra](http://www.sinatrarb.com) app for [NearlyFreeSpeech.net](https://www.nearlyfreespeech.net) (NFSN) using the Thin webserver.

## Installing

Create a site at NFSN of the type Apache 2.4 Generic. Enable SSH access if it's not already activated, and SSH into the site to execute the following commands:

```bash
cd /home/protected/
git clone https://github.com/clpo13/SinatraNFSN.git
cd SinatraNFSN
chmod a+x run.sh
bundle install --path ~/.gem
```

In the NFSN site control panel, add a daemon with these settings:

- Tag: sinatra
- Command Line: /home/protected/SinatraNFSN/run.sh
- Working Directory: /home/protected/SinatraNFSN/
- Run Daemon As: me

Add a proxy with the default settings:

- Protocol: HTTP
- Base URI: /
- Document Root: /
- Target Port: 8080

That's it! The daemon will start automatically after it's created. If there are no problems, you should see the words "Hello, world!" at the site's web address.

## Troubleshooting

Check the file `/home/logs/daemon_sinatra.log` for log and error messages. Most importantly, make sure the daemon is running as "me" *not* "web". Otherwise, Ruby will fail to find the right gems and give an error on starting the server. Also check that the proxy port is the same as what Sinatra/Thin is listening on.

## License

This code is made available under the [MIT license](LICENSE). Feel free to use and adapt it however you see fit.

