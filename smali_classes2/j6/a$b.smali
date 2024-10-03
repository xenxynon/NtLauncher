.class final Lj6/a$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/a;->c(JLi6/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Throwable;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lj6/a;

.field final synthetic h:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lj6/a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lj6/a$b;->g:Lj6/a;

    iput-object p2, p0, Lj6/a$b;->h:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lj6/a$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lj6/a$b;->g:Lj6/a;

    invoke-static {p1}, Lj6/a;->B(Lj6/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lj6/a$b;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
