class WeatherDataDto {
  WeatherDataDto({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.hourlyUnits,
    this.hourly,
  });

  WeatherDataDto.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    hourlyUnits = json['hourly_units'] != null
        ? HourlyUnits.fromJson(json['hourly_units'])
        : null;
    hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
  }

  num? latitude;
  num? longitude;
  num? generationtimeMs;
  num? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  num? elevation;
  HourlyUnits? hourlyUnits;
  Hourly? hourly;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['generationtime_ms'] = generationtimeMs;
    map['utc_offset_seconds'] = utcOffsetSeconds;
    map['timezone'] = timezone;
    map['timezone_abbreviation'] = timezoneAbbreviation;
    map['elevation'] = elevation;
    if (hourlyUnits != null) {
      map['hourly_units'] = hourlyUnits?.toJson();
    }
    if (hourly != null) {
      map['hourly'] = hourly?.toJson();
    }
    return map;
  }
}

class Hourly {
  Hourly({
    this.time,
    this.temperature2m,
    this.weathercode,
    this.relativehumidity2m,
    this.windspeed10m,
    this.pressureMsl,
  });

  Hourly.fromJson(dynamic json) {
    time = json['time'] != null ? json['time'].cast<String>() : [];
    temperature2m = json['temperature_2m'] != null
        ? json['temperature_2m'].cast<num>()
        : [];
    weathercode =
        json['weathercode'] != null ? json['weathercode'].cast<num>() : [];
    relativehumidity2m = json['relativehumidity_2m'] != null
        ? json['relativehumidity_2m'].cast<num>()
        : [];
    windspeed10m =
        json['windspeed_10m'] != null ? json['windspeed_10m'].cast<num>() : [];
    pressureMsl =
        json['pressure_msl'] != null ? json['pressure_msl'].cast<num>() : [];
  }

  List<String>? time;
  List<num>? temperature2m;
  List<num>? weathercode;
  List<num>? relativehumidity2m;
  List<num>? windspeed10m;
  List<num>? pressureMsl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['temperature_2m'] = temperature2m;
    map['weathercode'] = weathercode;
    map['relativehumidity_2m'] = relativehumidity2m;
    map['windspeed_10m'] = windspeed10m;
    map['pressure_msl'] = pressureMsl;
    return map;
  }
}

class HourlyUnits {
  HourlyUnits({
    this.time,
    this.temperature2m,
    this.weathercode,
    this.relativehumidity2m,
    this.windspeed10m,
    this.pressureMsl,
  });

  HourlyUnits.fromJson(dynamic json) {
    time = json['time'];
    temperature2m = json['temperature_2m'];
    weathercode = json['weathercode'];
    relativehumidity2m = json['relativehumidity_2m'];
    windspeed10m = json['windspeed_10m'];
    pressureMsl = json['pressure_msl'];
  }

  String? time;
  String? temperature2m;
  String? weathercode;
  String? relativehumidity2m;
  String? windspeed10m;
  String? pressureMsl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['temperature_2m'] = temperature2m;
    map['weathercode'] = weathercode;
    map['relativehumidity_2m'] = relativehumidity2m;
    map['windspeed_10m'] = windspeed10m;
    map['pressure_msl'] = pressureMsl;
    return map;
  }
}
