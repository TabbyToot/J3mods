.class public Lcom/android/systemui/recents/RecentsAlternateProxyService;
.super Landroid/app/Service;
.source "RecentsAlternateProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsAlternateProxyService$H;
    }
.end annotation


# static fields
.field private static final MSG_BOOTCOMPLETED:I = 0x6

.field private static final MSG_CONFIGURATIONCHANGED:I = 0x5

.field private static final MSG_HIDE_RECENT_APPS:I = 0x2

.field private static final MSG_PRELOAD_RECENT_APPS:I = 0x4

.field private static final MSG_SHOW_RECENT_APPS:I = 0x1

.field private static final MSG_SHOW_RELATIVE_AFFILIATED_TASK:I = 0x7

.field private static final MSG_TOGGLE_RECENT_APPS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "RecentsAlternateProxyService"


# instance fields
.field mBinder:Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;-><init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;Lcom/android/systemui/recents/RecentsAlternateProxyService$1;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;-><init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Lcom/android/systemui/recents/RecentsAlternateProxyService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsAlternateProxyService$2;-><init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBinder:Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsAlternateProxyService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const-string v0, "RecentsAlternateProxyService"

    const-string v1, "onBind is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBinder:Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    const-string v1, "RecentsAlternateProxyService"

    const-string v2, "onCreate is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mContext:Landroid/content/Context;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v3}, Lcom/android/systemui/recent/Recents;->getRecentsComponent(Landroid/content/Context;ZZ)Lcom/android/systemui/recents/AlternateRecentsComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.REMOVE_ALL_TASKS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "RecentsAlternateProxyService"

    const-string v1, "onDestroy is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 81
    return-void
.end method
