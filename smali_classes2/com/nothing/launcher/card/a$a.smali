.class public final Lcom/nothing/launcher/card/a$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/card/a;-><init>(Landroid/content/Context;Lw1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/launcher/card/a;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/card/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/a$a;->a:Lcom/nothing/launcher/card/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/card/a$a;->a:Lcom/nothing/launcher/card/a;

    invoke-static {p1}, Lcom/nothing/launcher/card/a;->d0(Lcom/nothing/launcher/card/a;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nothing/launcher/card/a$a;->a:Lcom/nothing/launcher/card/a;

    invoke-static {p1}, Lcom/nothing/launcher/card/a;->c0(Lcom/nothing/launcher/card/a;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nothing/launcher/card/a$a;->a:Lcom/nothing/launcher/card/a;

    invoke-static {p1}, Lcom/nothing/launcher/card/a;->d0(Lcom/nothing/launcher/card/a;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/nothing/launcher/card/a$a;->a:Lcom/nothing/launcher/card/a;

    invoke-static {v0}, Lcom/nothing/launcher/card/a;->c0(Lcom/nothing/launcher/card/a;)F

    move-result v0

    iget-object p0, p0, Lcom/nothing/launcher/card/a$a;->a:Lcom/nothing/launcher/card/a;

    invoke-static {p0}, Lcom/nothing/launcher/card/a;->b0(Lcom/nothing/launcher/card/a;)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_1
    return-void
.end method
