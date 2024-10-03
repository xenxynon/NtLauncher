.class public final Lcom/nothing/cardwidget/battery/timer/AlarmTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/battery/timer/ITimerTask;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/timer/AlarmTimer;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/timer/AlarmTimer;->id:Ljava/lang/String;

    return-object p0
.end method

.method public start(JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
