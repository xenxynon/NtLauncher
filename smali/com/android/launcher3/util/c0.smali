.class public final synthetic Lcom/android/launcher3/util/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/LockedUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/LockedUserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/c0;->g:Lcom/android/launcher3/util/LockedUserState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/c0;->g:Lcom/android/launcher3/util/LockedUserState;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/LockedUserState;->b(Lcom/android/launcher3/util/LockedUserState;Landroid/content/Intent;)V

    return-void
.end method