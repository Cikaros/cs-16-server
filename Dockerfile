FROM kriansa/cs-16:2018-12-24

# Runtime settings
ENV RCON_PASSWORD="1032325640"
ENV SV_PASSWORD=""
ENV MAXPLAYERS="32"
ENV MAPNAME="fy_pool_day"

# Copy the files
COPY --chown=steam:steam cstrike/maps cstrike_downloads/maps
COPY --chown=steam:steam cstrike/addons cstrike/addons
COPY --chown=steam:steam cstrike/cfgs cstrike/cfgs
COPY --chown=steam:steam cstrike/liblist.gam cstrike/mapcycle.txt \
  cstrike/server.cfg cstrike/motd.html cstrike/
COPY --chown=steam:steam engine_i486.so .
COPY --chown=steam:steam reunion.cfg .

CMD /home/steam/hlds/hlds_run -game cstrike +ip 0.0.0.0 +maxplayers $MAXPLAYERS +map $MAPNAME