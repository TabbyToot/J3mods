.class public Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
.super Ljava/lang/Object;
.source "KeyguardLongShadowEffectWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardLongShadowEffectWrapperDummy"


# instance fields
.field private mAlphaMask:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field private mShadowView:Landroid/widget/ImageView;

.field private mTargetView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/TextView;
    .param p3, "background"    # Landroid/widget/ImageView;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    .line 39
    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    .line 40
    return-void
.end method


# virtual methods
.method public intialize()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public updateImageViews()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public updateShadowViews()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public updateViews()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public viewToShadow()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
