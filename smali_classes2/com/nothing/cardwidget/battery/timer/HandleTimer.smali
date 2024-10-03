.class public final Lcom/nothing/cardwidget/battery/timer/HandleTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/battery/timer/ITimerTask;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/battery/timer/HandleTimer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/battery/timer/HandleTimer$Companion;

.field private static final TAG:Ljava/lang/String; = "HandleTimer"


# instance fields
.field private final handler$delegate:Ln5/e;

.field private final id:Ljava/lang/String;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nothing/cardwidget/battery/timer/ITimerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final timeTicker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/battery/timer/HandleTimer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/battery/timer/HandleTimer$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->Companion:Lcom/nothing/cardwidget/battery/timer/HandleTimer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->id:Ljava/lang/String;

    sget-object p1, Lcom/nothing/cardwidget/battery/timer/HandleTimer$handler$2;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/HandleTimer$handler$2;

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->handler$delegate:Ln5/e;

    new-instance p1, Lcom/nothing/cardwidget/battery/timer/a;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/battery/timer/a;-><init>(Lcom/nothing/cardwidget/battery/timer/HandleTimer;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->timeTicker:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/battery/timer/HandleTimer;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->timeTicker$lambda-0(Lcom/nothing/cardwidget/battery/timer/HandleTimer;)V

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->handler$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private static final timeTicker$lambda-0(Lcom/nothing/cardwidget/battery/timer/HandleTimer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/timer/ITimerListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->id:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/nothing/cardwidget/battery/timer/ITimerListener;->onTicker(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->timeTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->timeTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->id:Ljava/lang/String;

    return-object p0
.end method

.method public start(JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->listener:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->timeTicker:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/timer/HandleTimer;->timeTicker:Ljava/lang/Runnable;

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
