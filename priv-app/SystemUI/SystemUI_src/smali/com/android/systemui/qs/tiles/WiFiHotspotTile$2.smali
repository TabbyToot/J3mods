.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v1, 0x2

    # invokes: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 299
    return-void
.end method
