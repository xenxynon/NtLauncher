.class public final synthetic Lc/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lc/r$e;


# direct methods
.method public synthetic constructor <init>(Lc/r$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/t;->g:Lc/r$e;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc/t;->g:Lc/r$e;

    check-cast p1, Lc/r$d;

    invoke-static {p0, p1}, Lc/r$e;->b(Lc/r$e;Lc/r$d;)V

    return-void
.end method
