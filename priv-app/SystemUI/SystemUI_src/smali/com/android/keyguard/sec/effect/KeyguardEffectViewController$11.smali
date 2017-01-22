.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$11;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateIsAdminWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$11;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 2362
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->updateIsAdminWallpaper()V

    .line 2363
    return-void
.end method
