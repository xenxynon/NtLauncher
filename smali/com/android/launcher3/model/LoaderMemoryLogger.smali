.class public Lcom/android/launcher3/model/LoaderMemoryLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
    }
.end annotation


# instance fields
.field private final mLogEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid log level provided: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected clearLogs()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected printLogs()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LoaderMemoryLogger"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogTag:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "%s: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mStackStrace:Ljava/lang/Exception;

    if-eqz v4, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    aput-object v7, v2, v5

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "%s\n%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogObject:Ljava/lang/Object;

    if-eqz v2, :cond_1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const-string v2, "Adding item to ID map: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    :goto_1
    iget v1, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogLevel:I

    invoke-static {v1, v3, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderMemoryLogger;->clearLogs()V

    return-void
.end method
