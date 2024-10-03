.class final Lj1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic g:Lj1/i;


# direct methods
.method constructor <init>(Lj1/i;)V
    .locals 0

    iput-object p1, p0, Lj1/h;->g:Lj1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lj1/h;->g:Lj1/i;

    iget-object p0, p0, Lj1/i;->g:Lj1/a;

    invoke-static {p0}, Lj1/a;->p(Lj1/a;)V

    return-void
.end method
