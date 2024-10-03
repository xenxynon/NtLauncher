.class public final synthetic Lcom/nothing/cardwidget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/BlinkChronometer;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/BlinkChronometer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/a;->g:Lcom/nothing/cardwidget/BlinkChronometer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/a;->g:Lcom/nothing/cardwidget/BlinkChronometer;

    invoke-static {p0}, Lcom/nothing/cardwidget/BlinkChronometer$blinkRunnable$2;->a(Lcom/nothing/cardwidget/BlinkChronometer;)V

    return-void
.end method
