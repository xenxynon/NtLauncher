.class public final synthetic Lcom/android/quickstep/logging/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/l;->g:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/logging/l;->g:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    return-void
.end method