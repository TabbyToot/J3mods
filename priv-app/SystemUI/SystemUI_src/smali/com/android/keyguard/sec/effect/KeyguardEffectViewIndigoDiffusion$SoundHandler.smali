.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewIndigoDiffusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 337
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 338
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    const v1, 0x3e4ccccd    # 0.2f

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 344
    .local v0, "volume":F
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 346
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput-object v2, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 351
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 352
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 357
    .end local v0    # "volume":F
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "removeView mImageView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->removeView(Landroid/view/View;)V

    .line 362
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
