.class public final synthetic Landroidx/core/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ly5/a;


# direct methods
.method public synthetic constructor <init>(Ly5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/h;->g:Ly5/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/h;->g:Ly5/a;

    invoke-static {p0}, Landroidx/core/view/ViewKt;->a(Ly5/a;)V

    return-void
.end method
