.class Lcom/android/systemui/statusbar/policy/Clock$4;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 173
    .local v4, "mCalendar":Ljava/util/Calendar;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->access$000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 174
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->access$000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    const-string v10, "STATUSBAR-Clock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateClock:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCalendar.getTimeZone():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " TimeZone.getDefault():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 186
    .local v1, "context":Landroid/content/Context;
    const-string v0, ""

    .line 187
    .local v0, "AM_PM":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v10

    # invokes: Lcom/android/systemui/statusbar/policy/Clock;->is24HourFormat(Landroid/content/Context;)Z
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->access$100(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 188
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "currentLanguage":Ljava/lang/String;
    const-string v10, "en_GB"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "en_AU"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "en_NZ"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 192
    :cond_1
    const-string v10, "aa"

    invoke-static {v10, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .end local v2    # "currentLanguage":Ljava/lang/String;
    :cond_2
    :goto_0
    const v10, 0x7f0a01c0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # invokes: Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime(Ljava/util/Calendar;)Ljava/lang/CharSequence;
    invoke-static {v13, v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$200(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "timeText":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 203
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 206
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 207
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 208
    .local v3, "formatted":Landroid/text/SpannableStringBuilder;
    const/high16 v7, 0x3f000000    # 0.5f

    .line 209
    .local v7, "proportion":F
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mIsMacchiato:Z

    if-eqz v10, :cond_4

    .line 210
    const v7, 0x3f170a3d    # 0.59f

    .line 212
    :cond_4
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 213
    .local v5, "magic1":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 214
    .local v6, "magic2":I
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v8, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 215
    .local v8, "style":Landroid/text/style/CharacterStyle;
    add-int v10, v5, v6

    const/16 v11, 0x22

    invoke-virtual {v3, v8, v5, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 216
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 219
    .end local v3    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v5    # "magic1":I
    .end local v6    # "magic2":I
    .end local v7    # "proportion":F
    .end local v8    # "style":Landroid/text/style/CharacterStyle;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void

    .line 194
    .end local v9    # "timeText":Ljava/lang/String;
    .restart local v2    # "currentLanguage":Ljava/lang/String;
    :cond_6
    const-string v10, "aa"

    invoke-static {v10, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/Clock;->getTextLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
