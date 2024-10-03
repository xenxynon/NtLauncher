.class public final synthetic Lcom/nothing/cardwidget/battery/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/battery/view/BatteryCellView;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/a;->g:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/a;->g:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-static {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->a(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    return-void
.end method
