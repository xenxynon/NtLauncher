.class public final synthetic Lcom/android/launcher3/allapps/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/allapps/AllAppsStore;

.field public final synthetic h:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/j;->g:Lcom/android/launcher3/allapps/AllAppsStore;

    iput-object p2, p0, Lcom/android/launcher3/allapps/j;->h:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/j;->g:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/android/launcher3/allapps/j;->h:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->b(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/function/Predicate;Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method
