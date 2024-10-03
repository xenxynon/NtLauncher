.class final Lx1/p$b$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/p$b;-><init>(Lx1/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lx1/p$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lx1/p;


# direct methods
.method constructor <init>(Lx1/p;)V
    .locals 0

    iput-object p1, p0, Lx1/p$b$b;->g:Lx1/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lx1/p$a;
    .locals 1

    new-instance v0, Lx1/p$a;

    iget-object p0, p0, Lx1/p$b$b;->g:Lx1/p;

    invoke-direct {v0, p0}, Lx1/p$a;-><init>(Lx1/p;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lx1/p$b$b;->a()Lx1/p$a;

    move-result-object p0

    return-object p0
.end method
