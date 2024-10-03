.class final Lx1/d$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/d;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lx1/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lx1/d;


# direct methods
.method constructor <init>(Lx1/d;)V
    .locals 0

    iput-object p1, p0, Lx1/d$c;->g:Lx1/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lx1/b;
    .locals 1

    new-instance v0, Lx1/b;

    iget-object p0, p0, Lx1/d$c;->g:Lx1/d;

    invoke-direct {v0, p0}, Lx1/b;-><init>(Lx1/k;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lx1/d$c;->a()Lx1/b;

    move-result-object p0

    return-object p0
.end method
