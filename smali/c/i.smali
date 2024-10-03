.class public final synthetic Lc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lc/r$e;


# direct methods
.method public synthetic constructor <init>(Lc/r$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/i;->g:Lc/r$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lc/i;->g:Lc/r$e;

    invoke-virtual {p0}, Lc/r$e;->f()V

    return-void
.end method
