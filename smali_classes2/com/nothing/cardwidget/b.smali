.class public final synthetic Lcom/nothing/cardwidget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/NTPageIndicatorDot;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/b;->g:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/b;->g:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->a(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    return-void
.end method
