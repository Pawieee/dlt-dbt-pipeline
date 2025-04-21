from typing import Sequence
import dlt
from google_sheets import google_spreadsheet


def load_pipeline_with_named_ranges(spreadsheet_url_or_id: str) -> None:
    """
    Will not load the sheets in the spreadsheet, but it will load all the named ranges in the spreadsheet.
    """
    pipeline = dlt.pipeline(
        pipeline_name="google_sheets_pipeline",
        destination='postgres',
        dev_mode=True,
        dataset_name="ds_mindanao_eval",
    )
    data = google_spreadsheet(
        spreadsheet_url_or_id=spreadsheet_url_or_id,
        get_sheets=False,
        get_named_ranges=True,
    )
    info = pipeline.run(data)
    print(info)



if __name__ == "__main__":
    url_or_id = "1MtMJ-8Sx273Z73WyduqkkdiKkWwK_6PamuPiYgl3I5s"
    range_names = ["responses"]

    load_pipeline_with_named_ranges(url_or_id)
