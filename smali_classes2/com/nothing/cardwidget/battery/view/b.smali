.class public final synthetic Lcom/nothing/cardwidget/battery/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

.field public final synthetic h:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/b;->g:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/b;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/b;->g:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/b;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->b(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
