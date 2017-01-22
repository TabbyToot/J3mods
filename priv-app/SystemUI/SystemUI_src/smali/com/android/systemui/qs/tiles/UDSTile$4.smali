.class Lcom/android/systemui/qs/tiles/UDSTile$4;
.super Ljava/lang/Object;
.source "UDSTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UDSTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$4;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 259
    const/4 v0, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->access$302(Z)Z

    .line 260
    return-void
.end method
