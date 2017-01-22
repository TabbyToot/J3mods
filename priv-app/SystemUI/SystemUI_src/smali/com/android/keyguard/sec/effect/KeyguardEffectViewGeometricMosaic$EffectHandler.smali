.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewGeometricMosaic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "removeView mImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->removeView(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
