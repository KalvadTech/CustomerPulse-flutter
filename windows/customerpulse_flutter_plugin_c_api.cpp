#include "include/customerpulse_flutter/customerpulse_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "customerpulse_flutter_plugin.h"

void CustomerpulseFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  customerpulse_flutter::CustomerpulseFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
