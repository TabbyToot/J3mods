.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$7$1;
.super Ljava/lang/Object;
.source "KeyguardPreviewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->doInBackground([Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method
