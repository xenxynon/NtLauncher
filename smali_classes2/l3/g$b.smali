.class final Ll3/g$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll3/g;->updateAdapterItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ll3/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/g$b;

    invoke-direct {v0}, Ll3/g$b;-><init>()V

    sput-object v0, Ll3/g$b;->g:Ll3/g$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "obj"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isCountedForAccessibility()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p0, p1}, Ll3/g$b;->a(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
