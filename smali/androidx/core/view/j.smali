.class public final synthetic Landroidx/core/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/j;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/j;->g:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->a(Landroid/view/View;)V

    return-void
.end method
