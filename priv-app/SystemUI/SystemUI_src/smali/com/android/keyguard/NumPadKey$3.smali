.class Lcom/android/keyguard/NumPadKey$3;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$3;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 413
    const/16 v1, 0x15

    if-ne p2, v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$3;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mDigit:I
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$200(Lcom/android/keyguard/NumPadKey;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 429
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 421
    :cond_1
    const/16 v1, 0x16

    if-ne p2, v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$3;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mDigit:I
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$200(Lcom/android/keyguard/NumPadKey;)I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 414
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 422
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
