.class public final synthetic Lo4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic h:Lkotlin/jvm/internal/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo4/c;->h:Lkotlin/jvm/internal/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo4/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lo4/c;->h:Lkotlin/jvm/internal/z;

    invoke-static {v0, p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->b(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/z;)V

    return-void
.end method
