.class final Lq2/m$i;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/m;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lq2/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lq2/m;


# direct methods
.method constructor <init>(Lq2/m;)V
    .locals 0

    iput-object p1, p0, Lq2/m$i;->g:Lq2/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lq2/m$b;
    .locals 1

    new-instance v0, Lq2/m$b;

    iget-object p0, p0, Lq2/m$i;->g:Lq2/m;

    invoke-direct {v0, p0}, Lq2/m$b;-><init>(Lq2/m;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lq2/m$i;->a()Lq2/m$b;

    move-result-object p0

    return-object p0
.end method
