.class Lcom/android/systemui/statusbar/BaseStatusBar$7$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$7;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$7;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    .local v0, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1195
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1196
    .local v3, "n":Landroid/app/Notification;
    iget v5, v3, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_0

    .line 1197
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    :cond_0
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onListenerConnected n.icon =0 : sbn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1202
    .end local v3    # "n":Landroid/app/Notification;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    return-void
.end method
