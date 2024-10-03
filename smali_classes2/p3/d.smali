.class public final synthetic Lp3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lp3/e;


# direct methods
.method public synthetic constructor <init>(Lp3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/d;->g:Lp3/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lp3/d;->g:Lp3/e;

    invoke-static {p0}, Lp3/e;->a(Lp3/e;)V

    return-void
.end method
