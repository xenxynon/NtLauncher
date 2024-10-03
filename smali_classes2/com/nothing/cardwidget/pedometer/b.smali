.class public final synthetic Lcom/nothing/cardwidget/pedometer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/pedometer/PedometerContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/b;->g:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/b;->g:Lcom/nothing/cardwidget/pedometer/PedometerContainer;

    invoke-static {p0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->b(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V

    return-void
.end method
