.class public final Ll3/d;
.super Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Ll3/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/d$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ll3/d;->a:Ll3/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V

    return-void
.end method

.method public static final a(I)Z
    .locals 1

    sget-object v0, Ll3/d;->a:Ll3/d$a;

    invoke-virtual {v0, p0}, Ll3/d$a;->a(I)Z

    move-result p0

    return p0
.end method
