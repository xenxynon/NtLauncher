.class public final synthetic Lcom/nothing/cardwidget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/TestView;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/TestView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/c;->g:Lcom/nothing/cardwidget/TestView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/c;->g:Lcom/nothing/cardwidget/TestView;

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/TestView;->a(Lcom/nothing/cardwidget/TestView;Landroid/view/View;)V

    return-void
.end method
