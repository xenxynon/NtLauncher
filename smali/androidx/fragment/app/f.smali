.class public final synthetic Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic g:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->g:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->g:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentManager;->d(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;)V

    return-void
.end method
