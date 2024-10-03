.class public final synthetic Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lc/d;


# direct methods
.method public synthetic constructor <init>(Lc/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b;->g:Lc/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lc/b;->g:Lc/d;

    invoke-static {p0}, Lc/d;->D(Lc/d;)V

    return-void
.end method
