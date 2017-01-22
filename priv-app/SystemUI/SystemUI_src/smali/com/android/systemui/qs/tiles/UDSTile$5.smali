.class Lcom/android/systemui/qs/tiles/UDSTile$5;
.super Ljava/lang/Object;
.source "UDSTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UDSTile;->displaydialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$5;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UDSTile$5;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$5;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->access$902(Z)Z

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$5;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1000(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "checkboxchecked"

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/UDSTile;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
