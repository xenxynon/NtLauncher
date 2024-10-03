.class public final synthetic Lz/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/m;->g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lz/m;->g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->g(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Intent;)V

    return-void
.end method
