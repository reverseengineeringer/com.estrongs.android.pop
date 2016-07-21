package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ae;
import java.util.List;

@me
public final class cz
{
  public static final cr<Boolean> A = cr.a("gads:looper_for_gms_client:enabled", Boolean.valueOf(true));
  public static final cr<Boolean> B = cr.a("gads:sw_ad_request_service:enabled", Boolean.valueOf(true));
  public static final cr<Boolean> C = cr.a("gads:sw_dynamite:enabled", Boolean.valueOf(true));
  public static final cr<String> D = cr.a("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
  public static final cr<String> E = cr.a("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
  public static final cr<String> F = cr.a("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
  public static final cr<Boolean> G = cr.a("gads:enabled_sdk_csi", Boolean.valueOf(false));
  public static final cr<String> H = cr.a("gads:sdk_csi_server", "https://csi.gstatic.com/csi");
  public static final cr<Boolean> I = cr.a("gads:sdk_csi_write_to_file", Boolean.valueOf(false));
  public static final cr<Boolean> J = cr.a("gads:enable_content_fetching", Boolean.valueOf(true));
  public static final cr<Integer> K = cr.a("gads:content_length_weight", 1);
  public static final cr<Integer> L = cr.a("gads:content_age_weight", 1);
  public static final cr<Integer> M = cr.a("gads:min_content_len", 11);
  public static final cr<Integer> N = cr.a("gads:fingerprint_number", 10);
  public static final cr<Integer> O = cr.a("gads:sleep_sec", 10);
  public static final cr<Boolean> P = cr.a("gad:app_index_enabled", Boolean.valueOf(true));
  public static final cr<String> Q = cr.a("gads:kitkat_interstitial_workaround:experiment_id");
  public static final cr<Boolean> R = cr.a("gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
  public static final cr<Boolean> S = cr.a("gads:interstitial_follow_url", Boolean.valueOf(true));
  public static final cr<Boolean> T = cr.a("gads:interstitial_follow_url:register_click", Boolean.valueOf(true));
  public static final cr<String> U = cr.a("gads:interstitial_follow_url:experiment_id");
  public static final cr<Boolean> V = cr.a("gads:analytics_enabled", Boolean.valueOf(true));
  public static final cr<Boolean> W = cr.a("gads:ad_key_enabled", Boolean.valueOf(false));
  public static final cr<Integer> X = cr.a("gads:webview_cache_version", 0);
  public static final cr<String> Y = cr.b("gads:pan:experiment_id");
  public static final cr<String> Z = cr.a("gads:native:engine_url", "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
  public static final cr<String> a = cr.a("gads:sdk_core_experiment_id");
  public static final cr<Boolean> aa = cr.a("gads:ad_manager_creator:enabled", Boolean.valueOf(true));
  public static final cr<Boolean> ab = cr.a("gads:log:verbose_enabled", Boolean.valueOf(false));
  public static final cr<Boolean> ac = cr.a("gads:device_info_caching:enabled", Boolean.valueOf(true));
  public static final cr<Long> ad = cr.a("gads:device_info_caching_expiry_ms:expiry", 300000L);
  public static final cr<Boolean> ae = cr.a("gads:gen204_signals:enabled", Boolean.valueOf(false));
  public static final cr<Boolean> af = cr.a("gads:webview:error_reporting_enabled", Boolean.valueOf(false));
  public static final cr<Boolean> ag = cr.a("gads:adid_reporting:enabled", Boolean.valueOf(false));
  public static final cr<Boolean> ah = cr.a("gads:request_pkg:enabled", Boolean.valueOf(true));
  public static final cr<Boolean> ai = cr.a("gads:gmsg:disable_back_button:enabled", Boolean.valueOf(false));
  public static final cr<Long> aj = cr.a("gads:network:cache_prediction_duration_s", 300L);
  public static final cr<String> b = cr.a("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
  public static final cr<Boolean> c = cr.a("gads:request_builder:singleton_webview", Boolean.valueOf(false));
  public static final cr<String> d = cr.a("gads:request_builder:singleton_webview_experiment_id");
  public static final cr<Boolean> e = cr.a("gads:sdk_use_dynamic_module", Boolean.valueOf(false));
  public static final cr<String> f = cr.a("gads:sdk_use_dynamic_module_experiment_id");
  public static final cr<Boolean> g = cr.a("gads:sdk_crash_report_enabled", Boolean.valueOf(false));
  public static final cr<Boolean> h = cr.a("gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
  public static final cr<Boolean> i = cr.a("gads:block_autoclicks", Boolean.valueOf(false));
  public static final cr<String> j = cr.a("gads:block_autoclicks_experiment_id");
  public static final cr<String> k = cr.b("gads:prefetch:experiment_id");
  public static final cr<String> l = cr.a("gads:spam_app_context:experiment_id");
  public static final cr<Boolean> m = cr.a("gads:spam_app_context:enabled", Boolean.valueOf(false));
  public static final cr<String> n = cr.a("gads:video_stream_cache:experiment_id");
  public static final cr<Integer> o = cr.a("gads:video_stream_cache:limit_count", 5);
  public static final cr<Integer> p = cr.a("gads:video_stream_cache:limit_space", 8388608);
  public static final cr<Integer> q = cr.a("gads:video_stream_exo_cache:buffer_size", 8388608);
  public static final cr<Long> r = cr.a("gads:video_stream_cache:limit_time_sec", 300L);
  public static final cr<Long> s = cr.a("gads:video_stream_cache:notify_interval_millis", 1000L);
  public static final cr<Integer> t = cr.a("gads:video_stream_cache:connect_timeout_millis", 10000);
  public static final cr<Boolean> u = cr.a("gads:video:metric_reporting_enabled", Boolean.valueOf(false));
  public static final cr<String> v = cr.a("gads:video:metric_frame_hash_times", "");
  public static final cr<Long> w = cr.a("gads:video:metric_frame_hash_time_leniency", 500L);
  public static final cr<String> x = cr.b("gads:spam_ad_id_decorator:experiment_id");
  public static final cr<Boolean> y = cr.a("gads:spam_ad_id_decorator:enabled", Boolean.valueOf(false));
  public static final cr<String> z = cr.b("gads:looper_for_gms_client:experiment_id");
  
  public static List<String> a()
  {
    return ae.m().a();
  }
  
  public static void a(Context paramContext)
  {
    ae.n().a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */