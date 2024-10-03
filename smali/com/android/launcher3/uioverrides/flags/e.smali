.class public final synthetic Lcom/android/launcher3/uioverrides/flags/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic g:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/e;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/e;->g:Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    check-cast p2, Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->b(Ljava/util/Set;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)I

    move-result p0

    return p0
.end method
