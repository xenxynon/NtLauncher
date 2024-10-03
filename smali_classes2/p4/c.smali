.class public final synthetic Lp4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lp4/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
