.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .registers 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1057
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private shouldWifiStayAwake(II)Z
    .registers 8
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v1, 0x1

    .line 1025
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1029
    .local v0, wifiSleepPolicy:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    .line 1038
    :cond_15
    :goto_15
    return v1

    .line 1032
    :cond_16
    if-ne v0, v1, :cond_1a

    if-nez p2, :cond_15

    .line 1038
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$3;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_15
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 919
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_idle_ms"

    const-wide/32 v10, 0xdbba0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 924
    .local v1, idleMillis:J
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "stay_on_while_plugged_in"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 927
    .local v5, stayAwakeConditions:I
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 931
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v9}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 932
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->releaseShutdownLock()V

    .line 933
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 934
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 935
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 936
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 937
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 939
    :cond_6f
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 940
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;Z)V

    .line 1014
    :cond_7e
    :goto_7e
    return-void

    .line 941
    :cond_7f
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 945
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 946
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 947
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 948
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 949
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 957
    :cond_ae
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v8

    if-nez v8, :cond_7e

    .line 958
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->acquireShutdownLock()V

    .line 960
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v8, v8, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_e8

    .line 962
    const-wide/32 v1, 0x1d4c0

    .line 963
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v1

    iget-object v12, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v12}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_7e

    .line 966
    :cond_e8
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;Z)V

    goto :goto_7e

    .line 983
    :cond_ef
    const-string v8, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 984
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;Z)V

    goto :goto_7e

    .line 985
    :cond_fe
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_144

    .line 993
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 997
    .local v3, pluggedType:I
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_13d

    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v8

    if-eqz v8, :cond_13d

    invoke-direct {p0, v5, v3}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v8

    if-nez v8, :cond_13d

    .line 999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v6, v8, v1

    .line 1003
    .local v6, triggerTime:J
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v10}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1005
    .end local v6           #triggerTime:J
    :cond_13d
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8, v3}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_7e

    .line 1006
    .end local v3           #pluggedType:I
    :cond_144
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15e

    .line 1007
    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1009
    .local v4, state:I
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_7e

    .line 1010
    .end local v4           #state:I
    :cond_15e
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1011
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-string v9, "phoneinECMState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2402(Lcom/android/server/WifiService;Z)Z

    .line 1012
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto/16 :goto_7e
.end method
