.class public final Lj6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/a;->c(JLi6/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Li6/n;

.field final synthetic h:Lj6/a;


# direct methods
.method public constructor <init>(Li6/n;Lj6/a;)V
    .locals 0

    iput-object p1, p0, Lj6/a$a;->g:Li6/n;

    iput-object p2, p0, Lj6/a$a;->h:Lj6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj6/a$a;->g:Li6/n;

    iget-object p0, p0, Lj6/a$a;->h:Lj6/a;

    sget-object v1, Ln5/t;->a:Ln5/t;

    invoke-interface {v0, p0, v1}, Li6/n;->y(Li6/i0;Ljava/lang/Object;)V

    return-void
.end method
