.class Lc/r$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/r$e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lc/r$e;


# direct methods
.method constructor <init>(Lc/r$e;)V
    .locals 0

    iput-object p1, p0, Lc/r$e$a;->g:Lc/r$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lc/r$e$a;->g:Lc/r$e;

    invoke-static {p1}, Lc/r$e;->c(Lc/r$e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/r$e$a;->g:Lc/r$e;

    invoke-static {p1}, Lc/r$e;->d(Lc/r$e;)V

    :cond_0
    iget-object p1, p0, Lc/r$e$a;->g:Lc/r$e;

    iget-object p1, p1, Lc/r$e;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
