.class public final synthetic Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lo0/h;


# direct methods
.method public synthetic constructor <init>(Lo0/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/e;->g:Lo0/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lo0/e;->g:Lo0/h;

    invoke-static {p0}, Lo0/h;->R(Lo0/h;)V

    return-void
.end method
