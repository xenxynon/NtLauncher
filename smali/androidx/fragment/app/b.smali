.class public final synthetic Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic g:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/b;->g:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/b;->g:Landroidx/fragment/app/FragmentActivity;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentActivity;->j(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;)V

    return-void
.end method
