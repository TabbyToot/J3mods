.class Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;
.super Ljava/lang/Object;
.source "SubPhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->checkBarModes()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    .line 275
    return-void
.end method
